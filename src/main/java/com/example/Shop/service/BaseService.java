package com.example.Shop.service;

import org.springframework.stereotype.Service;

import com.example.Shop.entity.BaseEntity;

@Service
public abstract class BaseService<E extends BaseEntity> {
	
	
	/*
	 * @PersistenceContext EntityManager entityManager;
	 * 
	 * @Autowired private ProductRepository productrepo;
	 * 
	 * protected abstract Class<E> clazz();
	 * 
	 * public E getById(int id) { return entityManager.find(clazz(), id); }
	 * 
	 * @SuppressWarnings("unchecked") public List<E> findAll() { Table tbl =
	 * clazz().getAnnotation(Table.class); return (List<E>)
	 * entityManager.createNativeQuery("SELECT * FROM " + tbl.name(),
	 * clazz()).getResultList(); }
	 * 
	 * @Transactional public E saveOrUpdate(E entity) { if (entity.getId() == null
	 * || entity.getId() <= 0) { entityManager.persist(entity); return entity; }
	 * else { return entityManager.merge(entity); } }
	 * 
	 * public void delete(E entity) { entityManager.remove(entity); }
	 * 
	 * @Transactional public void deleteById(int id) { E entity = this.getById(id);
	 * delete(entity); }
	 * 
	 * @SuppressWarnings("unchecked") public List<E> executeNativeSql2(String
	 * sql,int page,int size_of_page) { try { Query query =
	 * entityManager.createNativeQuery(sql, clazz());
	 * 
	 * if(page >= 0 ) { query.setFirstResult(page);
	 * query.setMaxResults(size_of_page); } return query.getResultList(); } catch
	 * (Exception e) { e.printStackTrace(); return new ArrayList<E>(); } }
	 * 
	 * @SuppressWarnings("unchecked") public List<E> executeNativeSql(String sql) {
	 * try { Query query = entityManager.createNativeQuery(sql, clazz());
	 * 
	 * 
	 * return query.getResultList(); } catch (Exception e) { e.printStackTrace();
	 * return new ArrayList<E>(); } }
	 */
}
