package com.myConf;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyConfManager {
	private static MyConfManager instance;
	private SqlSessionFactory sqlSessionFactory;
	
	private MyConfManager() {
		String configFile = "com/myConf/MyConf.xml";
		
		try {
			Reader reader = Resources.getResourceAsReader(configFile);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
			
		}catch(IOException e) {
			e.printStackTrace();
		}		
	}//
	
	public static MyConfManager getInstance(){
		if(instance == null) {
			instance = new MyConfManager();
		}
		return instance;
	}
	
    public SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }
	
}//
