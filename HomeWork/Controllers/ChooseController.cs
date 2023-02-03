using HomeWork.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HomeWork.Controllers
{
    public class ChooseController : Controller
    {
        private HomeworkEntities db = new HomeworkEntities();

        // GET: Choose
        public ActionResult Index()
        {
            var studentList = from s in db.Students select s;

            foreach (var student in studentList)
            {
                student.姓名 = student.學號 + "(" + student.姓名 + ")";
            }

            ViewData["Classes"] = db.Classes.ToList();

            ViewBag.學生 = new SelectList(studentList, "姓名", "姓名");

            return View();
        }

    }
}