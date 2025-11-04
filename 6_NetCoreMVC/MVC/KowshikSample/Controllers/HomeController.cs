using KowshikSample.Models;
using Microsoft.AspNetCore.Mvc;
using SecondMVC.Models;
using System.Diagnostics;

namespace KowshikSample.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Details(Student obj)
        {
            
            return View(obj);
        }

    }
}
