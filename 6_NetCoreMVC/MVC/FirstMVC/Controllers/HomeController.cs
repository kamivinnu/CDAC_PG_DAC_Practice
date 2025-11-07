using System.Diagnostics;
using FirstMVC.Models;
using Microsoft.AspNetCore.Mvc;

namespace FirstMVC.Controllers
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
