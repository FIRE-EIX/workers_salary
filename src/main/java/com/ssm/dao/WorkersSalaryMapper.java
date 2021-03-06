package com.ssm.dao;

import com.ssm.entity.WorkersSalary;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface WorkersSalaryMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workers_salary
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(@Param("number") String number, @Param("month") Integer month);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workers_salary
     *
     * @mbggenerated
     */
    int insert(WorkersSalary record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workers_salary
     *
     * @mbggenerated
     */
    int insertSelective(WorkersSalary record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workers_salary
     *
     * @mbggenerated
     */
    WorkersSalary selectByPrimaryKey(@Param("number") String number, @Param("month") Integer month);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workers_salary
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(WorkersSalary record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workers_salary
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(WorkersSalary record);
    List<WorkersSalary> list();
    List<com.ssm.entity.WorkersSalary> search(String number);
    List<WorkersSalary> findByName(String name);
    List<WorkersSalary> login(@Param("number") String number,@Param("pwd") String pwd);
    List<WorkersSalary> findByMonth(Integer month);
    List<WorkersSalary> findByHisMonth(@Param("name")String name, @Param("month")Integer month);
    int updatePassword(@Param("number")String number, @Param("pwd")String pwd);
}