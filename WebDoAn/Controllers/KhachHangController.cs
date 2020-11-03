using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDoAn.Models;

namespace WebDoAn.Controllers
{
    public class KhachHangController : Controller
    {
        // GET: KhachHang
        QLBCCEntities2 db = new QLBCCEntities2();
        public ActionResult KhachHangIndex()
        {
            //Truy vấn đữ liệu thông qua câu lệnh.
            //Đối tượng listKH sẽ lấy toàn bộ dữ liệu từ bảng khách hàng.
            var listKH = from KH in db.KhachHang select KH;
            return View(listKH);
        }
    }
}