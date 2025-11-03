using Microsoft.AspNetCore.Mvc;
using System.Security.Cryptography;

namespace FirstMVC.Controllers
{
    public class StudentController : Controller
    {
        public IActionResult Index()
        {
            return Content("Today is Monday");
        }

        public string ShowName()
        {
            return "India";
        }
    }
}
