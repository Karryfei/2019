package controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.poi.ss.usermodel.Picture;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class ImgUpController {

//	@RequestMapping("imgup")
//	public  @ResponseBody String imgUp(@RequestParam("file") CommonsMultipartFile file,HttpServletRequest req )throws Exception {
////		String newname=null;
//		String oname=file.getOriginalFilename(); //上传的文件名
////		String ex=oname.substring(oname.lastIndexOf("."),oname.length());
////		String nname = UUID.randomUUID()+ex;
//		
//		System.out.println("oname=="+oname);
////		System.out.println("ex=="+ex);
////		System.out.println("nname=="+nname);
//  
//		String path=req.getSession().getServletContext().getRealPath("/");//获取的是Servlet容器对象，相当于tomcat容器了。getRealPath("/") 获取实际路径，“/”指代项目根目录，所以代码返回的是项目在容器中的实际发布运行的根路径
//		String path2=path+"images/";
//		System.out.println(path);
//		System.out.println(path2);
//		file.transferTo(new File(path2,oname));
////		newname="/upload/"+nname;
//		return "/upload/"+oname;
//	}
	
	@RequestMapping("imgup")
	public  @ResponseBody String imgUp(@RequestParam("file") CommonsMultipartFile file,HttpServletRequest req )throws Exception {
		String newname=null;
		String oname=file.getOriginalFilename();
		String ex=oname.substring(oname.lastIndexOf("."),oname.length());
		String nname = UUID.randomUUID()+ex;
  
		String path=req.getSession().getServletContext().getRealPath("/")+"images";
//		path=new File(path).getParentFile().getPath()+"/images";
		System.out.println(path+"");
		System.out.println(req.getSession().getServletContext().getContextPath());
		System.out.println(new File("").getCanonicalPath());
		System.out.println(this.getClass().getClassLoader().getResource(""));
		file.transferTo(new File(path));
		return "/images/"+nname;
	}
	
	}

