package egovframework.com.test.web;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.ImagePaginationInfo;
import egovframework.com.cmm.service.CommonService;
import egovframework.com.test.service.TestService;
import egovframework.com.test.service.TestVO;
import egovframework.rte.fdl.property.EgovPropertyService;


@Controller
@RequestMapping(value = {"/test", "/admin"})
public class TestController {
	protected Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name="testService")
	TestService testService;
	
	@Resource(name="commonService")
	CommonService commonService;
	
	@Resource(name="propertiesService")
	EgovPropertyService propertiesService;
	
	
	
	
	@RequestMapping(value = {"/selectTestView.do"})
	public String selectTestView(
			@ModelAttribute("searchVO") TestVO searchVO,
			HttpServletRequest req,
			HttpServletResponse res,
			ModelMap model
			) throws Exception {
			log.debug("te_id="+searchVO.getTe_id());
			
			//TestVO resultVO = (TestVO)testService.selectView(searchVO, req, res);
			TestVO resultVO = (TestVO)commonService.selectView(searchVO, req, res, "testDAO.selectTestView");
			model.addAttribute("resultVO", resultVO);
			
		return "test/selectTestView";
	}
	
	@RequestMapping(value = {"/join.do"})
	public String insertTestForm(
			@PathVariable("path1") String path1,
			@ModelAttribute("searchVO") TestVO searchVO,
			HttpServletRequest req,
			HttpServletResponse res,
			ModelMap model
			) throws Exception {
		
			if("Form".equals(path1)) {
				//insertTestForm.do 호출(등록페이지)
				log.debug("등록페이지호출 :: join.do");
				
				model.addAttribute("actionUrl", "join.do");
				return "test/insertTestForm";
				
			}else if(path1 == null || "".equals(path1)) {
				//insertTest.do 호출(등록처리페이지)
				log.debug("등록처리페이지호출 :: join.do");
				log.debug("join_school_num :: " + searchVO.getJoin_school_num());
				
				
				try {
					//데이터 저장(insert)
					//String te_id = testService.insert(searchVO, req, res);
					String join_school_num = commonService.insert(searchVO, req, res, "testDAO.insertTest");
					
					model.addAttribute("resultMsg", "저장되었습니다.");
					model.addAttribute("returnUrl", "/test/selectTestList.do");
				}catch(Exception e) {
					e.printStackTrace();
					model.addAttribute("resultMsg", "저장에 실패하였습니다.");
				}
				
				
				//return "redirect:/test/selectTestList.do";
			}

			return "common/alert";
	}
	
	
	
	
	
	
	
	
}
