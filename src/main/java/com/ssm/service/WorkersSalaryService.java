package com.ssm.service;

import com.ssm.dao.WorkersSalaryMapper;
import com.ssm.entity.WorkersSalary;

import java.util.List;

public interface WorkersSalaryService {
    public List<WorkersSalary> list();

    public int insert(WorkersSalary workersSalary);

    public int delete(String number,Integer month);

    public WorkersSalary find(String number,Integer month);

    public int update(WorkersSalary workersSalary);

    public List<WorkersSalary> login(String number,String pwd);

    public List<WorkersSalary> search(String number);

    public List<WorkersSalary> findByName(String name);

    public List<WorkersSalary> findByMonth(Integer month);

    public List<WorkersSalary> findByHisMonth(String name, Integer month);

    public int updatePassword(String number, String pwd);

}
