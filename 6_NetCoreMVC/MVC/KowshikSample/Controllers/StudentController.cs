using Microsoft.AspNetCore.Mvc;

namespace SecondMVC.Controllers
{
    public class StudentController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
