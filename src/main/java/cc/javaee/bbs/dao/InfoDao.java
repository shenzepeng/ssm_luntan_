package cc.javaee.bbs.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cc.javaee.bbs.model.Info;

@Repository
public class InfoDao extends SqlSessionDaoSupport {
	String ns = "jbbs_info.";

	public Info find(int id) {
		return this.getSqlSession().selectOne(ns + "find", id);
	}

	public void update(Info info) {
		this.getSqlSession().insert(ns + "update", info);
	}

	@Autowired
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		super.setSqlSessionTemplate(sqlSessionTemplate);
	}
}