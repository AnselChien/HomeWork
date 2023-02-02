using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HomeWork.Models
{
    public class StudentViewModel
    {
        public Student Student { get; set; }
        public List<HomeWork.Models.Student> Students { get; set; }

    }
}