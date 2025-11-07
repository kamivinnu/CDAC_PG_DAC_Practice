using Microsoft.AspNetCore.Mvc;

namespace FirstMVC.Controllers
{
    public class EmployeeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        
    }
}
