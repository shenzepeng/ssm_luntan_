package cc.javaee.bbs.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cc.javaee.bbs.model.JifenGroup;

@Repository
public class JifenGroupDao extends SqlSessionDaoSupport {
	String ns = "jbbs_jifen_group.";

	public List<JifenGroup> find(JifenGroup jifenGroup) {
		return this.getSqlSession().selectList(ns + "find", jifenGroup);
	}

	public void insert(JifenGroup jifenGroup) {
		this.getSqlSession().insert(ns + "insert", jifenGroup);
	}

	public void delete(Integer id) {
		this.getSqlSession().delete(ns + "delete", id);
	}

	public void update(JifenGroup jifenGroup) {
		this.getSqlSession().update(ns + "update", jifenGroup);
	}

	@Autowired
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		super.setSqlSessionTemplate(sqlSessionTemplate);
	}
}