using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebDoAn.Models;

namespace WebDoAn.Controllers
{
    public class LoaiSanPhamController : Controller
    {
        // GET: LoaiSanPham
        QLBCCEntities2 db = new QLBCCEntities2();
        public ActionResult LoaiSanPhamIndex()
        {
            //Truy vấn đữ liệu thông qua câu lệnh.
            //Đối tượng listKH sẽ lấy toàn bộ dữ liệu từ bảng loại sản phẩm.
            var listLSP = from LSP in db.LoaiSanPham select LSP;
            return View(listLSP);
        }
    }
}
