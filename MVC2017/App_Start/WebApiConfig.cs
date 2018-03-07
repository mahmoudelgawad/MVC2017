﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;

namespace MVC2017
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            //To return json format only
            //config.Formatters.JsonFormatter.SupportedMediaTypes.Add(new System.Net.Http.Headers.MediaTypeHeaderValue("application/json"));


            // Web API configuration and services

            // Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
    }
}
