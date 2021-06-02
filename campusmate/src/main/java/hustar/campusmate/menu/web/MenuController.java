package hustar.campusmate.menu.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

import egovframework.com.cmm.service.CommonService;
import hustar.campusmate.menu.service.MenuVO;

@Controller
public class MenuController {
	
		//리소스를 통해 객체할당하고 mappers로 부터 DB값 java로 사용가능
		@Resource(name = "commonService")
		CommonService commonService;
		

		@RequestMapping("/campusmate_menu/login.do")
		public String login() {
			return "/campusmate_menu/login";
		}
		
		@RequestMapping("/campusmate_menu/join.do")
		public String join(HttpServletRequest request, Model model) throws Exception{
			
			Map<String, ?> inputflashMap = RequestContextUtils.getInputFlashMap(request);
			
			if(inputflashMap != null) {
				//클라이언트에게 전달하기 위해사용하는 model객체
				model.addAttribute("msg", inputflashMap.get("msg"));
				System.out.println("msg = " + inputflashMap.get("msg"));
			}
			
			return "/campusmate_menu/join";
		}
		
		
		//회원가입
		//DB에 입력하기 위한 컨트롤러. 중요!!!!!!!!!!!
		@RequestMapping("/campusmate_menu/joinInsert.do")	//joinInsert.do로 화면에 주소띄우기
		public String joinInsert(@ModelAttribute("memberVO") MenuVO menuVO,
				RedirectAttributes redirectAttributes) throws Exception//모든 컨트롤러는 throws해야 예외처리됨.
		{
			
			//화면에 있는 값들을 받기위한 VO설정 hustar.member.service -> MemberVO로부터 값을 읽어온다.
			
			//콘솔에 찍어보기
				System.out.println("join_school_num = " + menuVO.getJoin_school_num());
				System.out.println("join_password = " + menuVO.getJoin_password());
				System.out.println("join_name = " + menuVO.getJoin_name());
				System.out.println("join_phone = " + menuVO.getJoin_phone());
				
				
				//commonService.insert(memberVO, null, null, "memberDAO.insertMember"); // "memberDAO.insertMember"는 Member_SQL_mysql.xml에 설정
				
				redirectAttributes.addFlashAttribute("msg", "회원가입에 성공하셨습니다.");
				
				//실제 t_member DB 테이블에 insert!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! sqlmap -> Member_SQL_Mysql.xml로!!!!
				
				//forward와 redirect의 차이(redirect의 경우 다른 컨트롤러를 불러온다.)
				//return "forward:/member/join.do";
				//redirect를 통해 중복입력 막아야해.
				return "redirect:/campusmate_menu/join.do";	// /member/join.jsp를 반환한다. 하지만 다른 화면으로 돌려줘야 새로 join이 안됨. 그래서 redirect시켜 join.do로
		}
}
