package cc.javaee.bbs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cc.javaee.bbs.model.Message;
import cc.javaee.bbs.model.PageBean;

@Repository
public class MessageDao extends SqlSessionDaoSupport {
	String ns = "jbbs_message.";

	public List<Message> findpage(PageBean<Message> page) {
		return this.getSqlSession().selectList(ns + "findpage", page);
	}

	public int findpagecount(PageBean<Message> page) {
		return this.getSqlSession().selectOne(ns + "findpagecount", page);
	}

	public List<Message> find(Message Message) {
		return this.getSqlSession().selectList(ns + "select", Message);
	}

	public void insert(Message Message) {
		this.getSqlSession().insert(ns + "insert", Message);
	}

	public void delete(Integer id) {
		this.getSqlSession().delete(ns + "delete", id);
	}

	public void update(Message Message) {
		this.getSqlSession().update(ns + "update", Message);
	}

	@Autowired
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		super.setSqlSessionTemplate(sqlSessionTemplate);
	}
}