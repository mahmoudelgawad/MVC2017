﻿/*
 The main purpose for the Authentication BL is to implement Asp.net Identity membership
 AND there another custom Authentication using salt and hashing technique
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using DemoProject.Entities;
using DemoProject.DTO;
using System.Security.Cryptography;

namespace DemoProject.BL
{
    public class AuthenticationBL : BaseLogic
    {
        #region Private Members
        private UserManager<IdentityUser> _userManager;
        private int _rFCEncTimes = 10000;
        #endregion
        public AuthenticationBL()
        {
            _userManager = new UserManager<IdentityUser>(new UserStore<IdentityUser>());
        }

        #region methods
        public UserDto RegisterUser(RegisterUserDTO registerUserDTO)
        {
            //Save asp idintity
            IdentityUser identityUser = new IdentityUser(registerUserDTO.Username);
            identityUser.Email = registerUserDTO.Email;
            var result = _userManager.Create(identityUser, registerUserDTO.Password);
            if (!result.Succeeded)
            {
                return null;
            }
            //save user
            var userDto = MapperHelper.ToUserDto(registerUserDTO);
            using (UserLogic userLogic = new UserLogic(userDto, identityUser.Id))
            {
                userDto = userLogic.Save();
            }
            return userDto;
        }

        public UserDto CustomRegisterUser(RegisterUserDTO registerUserDTO)
        {
            //Genrate random Salt
            byte[] salt = new byte[16];
            new RNGCryptoServiceProvider().GetBytes(salt);
            // hashing slow design for many times using PBKDF2 algorithm 20 bytes (16+20) = 36
            var Rfc = new Rfc2898DeriveBytes(registerUserDTO.Password, salt, _rFCEncTimes);
            byte[] Hash = Rfc.GetBytes(20);
            byte[] SaltHash = new byte[36];
            Array.Copy(salt, 0, SaltHash, 0, 16);
            Array.Copy(Hash, 0, SaltHash, 16, 36);
            string PasswordSalt = Convert.ToBase64String(SaltHash);

            //save user
            var userDto = MapperHelper.ToUserDto(registerUserDTO);
            using (UserLogic userLogic = new UserLogic(userDto, PasswordSalt: PasswordSalt, Username: registerUserDTO.Username))
            {
                userDto = userLogic.Save();
            }
            return userDto;
        }

        public IdentityUser FindUser(UserLoginDTO userloginDTO)
        {
            var user = _userManager.Find(userloginDTO.Username, userloginDTO.Password);
            return user;
        }
        public UserDto FindUserBySaltHash(UserLoginDTO userloginDTO)
        {
            using (UserLogic userLogic = new UserLogic())
            {
                var user = userLogic.GetUserByUsername(userloginDTO.Username);
                if (user == null || user.ID == 0)
                {
                    return null;
                }
                string PasswordSalt = user.PasswordSalt;
                byte[] SaltHash = Convert.FromBase64String(PasswordSalt);
                byte[] salt = new byte[16];
                Array.Copy(SaltHash, 0, salt, 0, 16);
                var Rfc = new Rfc2898DeriveBytes(userloginDTO.Password, salt, _rFCEncTimes);
                byte[] OtherHash = Rfc.GetBytes(20);
                if (!CompareHash(SaltHash, OtherHash))
                {
                    return null;
                }
                return MapperHelper.ToUserDto(user);
            }
        }
        public override void Dispose()
        {
            _userManager.Dispose();
            base.Dispose();
        }
        #endregion

        #region private Methods
        private bool CompareHash(byte[] SaltHash, byte[] OtherHash)
        {
            bool isValid = true;
            for (int i = 0; i < 20; i++)
            {
                if (SaltHash[i + 16] != OtherHash[i])
                {
                    isValid = false;
                }
            }
            return isValid;
        }
        #endregion

    }
}
