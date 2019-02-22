package article.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import article.service.ArticleData;
import article.service.ArticleNotFoundException;
import article.service.DeleteArticleService;
import article.service.DeleteRequest;
import article.service.PermissionDeniedException;
import article.service.ReadArticleService;
import auth.service.User;
import mvc.command.CommandHandler;

public class DeleteArticleHandler implements CommandHandler {

	private DeleteArticleService deleteService = new DeleteArticleService();
	private ReadArticleService readService = new ReadArticleService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String noVal = req.getParameter("no");
		int no = Integer.parseInt(noVal);
		User authUser = (User) req.getSession().getAttribute("authUser");
		ArticleData articleData = readService.getArticle(no, false);

		if (!canDelete(authUser, articleData)) {
			res.sendError(HttpServletResponse.SC_FORBIDDEN);
			return null;
		}
		DeleteRequest delReq = new DeleteRequest(authUser.getId(), no, req.getParameter("title"),
				req.getParameter("content"));
		req.setAttribute("delReq", delReq);

		try {
			deleteService.delete(delReq);
			return "/WEB-INF/view/deleteArticleSuccess.jsp";
		} catch (ArticleNotFoundException e) {
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		} catch (PermissionDeniedException e) {
			res.sendError(HttpServletResponse.SC_FORBIDDEN);
			return null;
		}
	}

	private Boolean canDelete(User user, ArticleData data) {
		String writerId = data.getArticle().getWriter().getId();
		return user.getId().equals(writerId);
	}

}
