package ucm.nomadicpulse.repository;

import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.search.FullTextSession;
import org.hibernate.search.Search;


import org.hibernate.search.query.dsl.QueryBuilder;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import ucm.nomadicpulse.bean.DVDBean;
import ucm.nomadicpulse.bean.UserBean;
import ucm.nomadicpulse.controller.OnlineDVDStoreController;
import ucm.nomadicpulse.model.UserModel;

@Repository
@SuppressWarnings("unchecked")
public class DVDRepository {

	private static Logger logger = Logger.getLogger(DVDRepository.class);
	@Autowired
	private SessionFactory mySessionFactory;
	

	@Transactional
	public void indexDVDS() throws Exception {
		try {
			Session session = mySessionFactory.getCurrentSession();

			FullTextSession fullTextSession = Search.getFullTextSession(session);
			fullTextSession.createIndexer().startAndWait();
		} catch (Exception e) {
			throw e;
		}
	}

	@Transactional
	public void insertDVDToDB(String dvdCategory, String dvdName, String dvdDescription, double dvdPrice,
			String imagepath) {
		Session session = mySessionFactory.openSession();
		DVDBean dvdBean = new DVDBean();
		// UUID x = UUID.randomUUID();
		int x = 1;
		Date datenow = new Date();
		//dvdBean.setId(id);
		dvdBean.setDvdCategory(dvdCategory);
		dvdBean.setDvdName(dvdName);
		dvdBean.setDvdDescription(dvdDescription);
		dvdBean.setDvdPrice(dvdPrice);
		dvdBean.setImagePath(imagepath);
		dvdBean.setCreateDate(datenow);
		dvdBean.setUpdateDate(datenow);

	
		
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			session.saveOrUpdate(dvdBean);
			logger.info("DVD Info inserted successfylly");
				
			tx.commit();
		}catch (HibernateException e) {
			if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
		} finally {
	         session.close(); 
	      }
		
	}

	public List<DVDBean> searchDVD(String searchText) throws Exception {
		try {
			Session session = mySessionFactory.openSession();
			/*FullTextSession fullTextSession = Search.getFullTextSession(session);
			QueryBuilder qb = fullTextSession.getSearchFactory().buildQueryBuilder().forEntity(DVDBean.class).get();
			org.apache.lucene.search.Query query = qb.keyword().onFields("dvdCategory", "dvdName", "dvdDescription")
					.matching(searchText).createQuery();
			org.hibernate.Query hibQuery = fullTextSession.createFullTextQuery(query, DVDBean.class);*/
			Criteria c = session.createCriteria(DVDBean.class);
		String query1 = "From DVDBean A where A.dvdCategory = ? OR A.dvdName = ? OR A.dvdDescription = ?";
		
			Query q = session.createQuery(query1);
			String s = searchText.toLowerCase();
			q.setString(0, searchText);
			q.setString(1, searchText);
			q.setString(2, searchText);
				
				
			List<DVDBean> results = q.list();
			return results;
		} catch (Exception e) {
			throw e;
		}
	}

	public List<DVDBean> getDVDList(String searchText) {
		 Session session = mySessionFactory.openSession();
		 @SuppressWarnings("unchecked")
		 List<DVDBean> dvdList = session.createQuery("FROM DVDBean").list();
		//session.close();
		 System.out.println("+++++++++++++++++Found :" +dvdList.size() + "DVDBean" +dvdList);
		 //System.out.println(dvdList.set(index, element));
		 return dvdList;
		 /* .buildQueryBuilder().forEntity(DVDBean.class).get(); String sql = "";
		 * SQLQuery query = sessiondb.createSQLQuery(sql); return query.list();
		 * Query hibQuery = fullTextSession.createQuery("from DVDBean");
		 * List<DVDBean> dvdList = hibQuery.list(); System.out.println(
		 * "dvd list retrieved: " + dvdList); return dvdList;
		 */

	}

	public void doRegister(UserModel userModel) {
		// TODO Auto-generated method stub
		
		Session session = mySessionFactory.openSession();
		Date datenow = new Date();
		
		UserBean userBean = new UserBean();
		
		//userBean.setId(1);
		userBean.setFirstName(userModel.getFirstName());
		userBean.setLastName(userModel.getLastName());
		userBean.setEmailAddress(userModel.getLastName());
		userBean.setAddress(userModel.getAddress());
		userBean.setGender(userModel.getGender());
		userBean.setPassword(userModel.getPassword());
		userBean.setRe_password(userModel.getRe_password());
		userBean.setCreateDate(datenow);
		userBean.setUpdateDate(datenow);
		
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			session.saveOrUpdate(userBean);
			tx.commit();
		}catch (HibernateException e) {
			if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
		} finally {
	         session.close(); 
	      }
		
		
		
	}

	public UserBean doLogin(String emailAddress, String password) {
		// TODO Auto-generated method stub
		

		try {
			Session session = mySessionFactory.openSession();
			
			Criteria c = session.createCriteria(UserBean.class);
		String query1 = "From UserBean A where A.emailAddress = ? AND A.password = ? ";
		
			Query q = session.createQuery(query1);
			q.setString(0, emailAddress);
			q.setString(1, password);
			
				
				
			UserBean loginBean = (UserBean)q.uniqueResult();
			return loginBean;
		} catch (Exception e) {
			throw e;
		}
	
		
	}


	
	
	

}
