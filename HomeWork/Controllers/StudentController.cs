using HomeWork.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HomeWork.Controllers
{
    public class StudentController : Controller
    {
        public ActionResult Index()
        {
            List<Student> students = new List<Student>();

            using (HomeworkEntities conn = new HomeworkEntities())
            {
                students = (from s in conn.Students select s).ToList();
                ViewData["Students"] = conn.Students.ToList();
                return View();
            }

        }

        public ActionResult addStudent()
        {
            return View();
        }

        [HttpPost] 
        ActionResult addStudent(Student postback)
        {
            using (HomeworkEntities conn = new HomeworkEntities())
            {
                conn.Students.Add(postback);

                conn.SaveChanges();
            }

            return View();
        }

      
    }
}