package com.example.Shop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.multipart.MultipartFile;

import com.example.Shop.entity.ProductsEntity;

public interface IProductService {
	
	//Liệt kê các function sẽ sử dụng 

	<S extends ProductsEntity> List<S> findAll(Example<S> example, Sort sort);

	ProductsEntity getById(Integer id);

	void deleteAll();

	void delete(ProductsEntity entity);

	void deleteById(Integer id);

	<S extends ProductsEntity> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends ProductsEntity> List<S> saveAll(Iterable<S> entities);

	Optional<ProductsEntity> findById(Integer id);

	List<ProductsEntity> findAllById(Iterable<Integer> ids);

	List<ProductsEntity> findAll(Sort sort);

	Page<ProductsEntity> findAll(Pageable pageable);

	List<ProductsEntity> findAll();

	<S extends ProductsEntity> S save(S entity);

	ProductsEntity addProduct(ProductsEntity product, MultipartFile inputAvatar, MultipartFile[] inputPictures)
			throws Exception;

	Page<ProductsEntity> findByKeywork(String keywork, Pageable pageable);

	Page<ProductsEntity> findAll(String keywork, Pageable pageable);

	List<ProductsEntity> findProductShop();

	List<ProductsEntity> findProduct();

	Page<ProductsEntity> ProductShop(Pageable pageable);

	ProductsEntity findById2(int id);
	
	public List<ProductsEntity> findByKeyword(String keywork);

	
	
}
