﻿using System.Web;
using System.Web.Optimization;

namespace MVC2017
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            bundles.Add(new ScriptBundle("~/bundles/scripts").Include(
                        "~/Scripts/angular.min.js",
                        //"~/Scripts/angular-route.min.js",
                        "~/Scripts/angular-ui-router.min.js",
                        "~/Scripts/ng-flow-standalone.min.js",
                        "~/Scripts/TS/mainApp.js",
                        "~/Scripts/TS/MovieList.component.js",
                        "~/Scripts/TS/UploadImage.component.js",
                        "~/Scripts/TS/movie-rating.component.js",
                        "~/Scripts/TS/movie-details.component.js"
                        ));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css"));
        }
    }
}
