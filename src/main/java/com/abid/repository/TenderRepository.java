package com.abid.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.abid.entity.Tender;

@Repository
public interface TenderRepository extends JpaRepository<Tender,Integer> {
	
	@Query(value = "SELECT * FROM tbl_PI WHERE Indicator_ID= ?", nativeQuery = true)
	
	List<Tender> search(Integer id);

}
