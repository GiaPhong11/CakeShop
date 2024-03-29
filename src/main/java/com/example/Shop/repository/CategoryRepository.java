package com.example.Shop.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.Shop.entity.CategoryEntity;


@Repository
public interface CategoryRepository extends JpaRepository<CategoryEntity, Integer> {
	@Query(value = "SELECT e.* FROM tbl_category e Where e.name like %?1%", nativeQuery = true)
	public List<CategoryEntity> findByTitle(String name);
	
	
	@Query(value = "SELECT e.* FROM tbl_category e Where e.name like %?1%"
			+" OR e.description LIKE %?1%"
			, nativeQuery = true)
	public Page<CategoryEntity> findByKeywork(String keywork, Pageable pageable);
}
