package com.ssm.entity;

public class WorkersSalary {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column workers_salary.number
     *
     * @mbggenerated
     */
    private String number;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column workers_salary.month
     *
     * @mbggenerated
     */
    private Integer month;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column workers_salary.name
     *
     * @mbggenerated
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column workers_salary.post_salary
     *
     * @mbggenerated
     */
    private Double postSalary;  //岗位工资

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column workers_salary.salary_salary
     *
     * @mbggenerated
     */
    private Double salarySalary; //薪级工资

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column workers_salary.job_allowance
     *
     * @mbggenerated
     */
    private Double jobAllowance; //职务津贴

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column workers_salary.merit_salary
     *
     * @mbggenerated
     */
    private Double meritSalary; //绩效工资

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column workers_salary.wages_payable
     *
     * @mbggenerated
     */
    private Double wagesPayable; //应发工资

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column workers_salary.individual_tax
     *
     * @mbggenerated
     */
    private Double individualTax; //个人所得税

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column workers_salary.net_salary
     *
     * @mbggenerated
     */
    private Double netSalary; //实发工资

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column workers_salary.password
     *
     * @mbggenerated
     */
    private String password;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column workers_salary.number
     *
     * @return the value of workers_salary.number
     *
     * @mbggenerated
     */
    public String getNumber() {
        return number;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column workers_salary.number
     *
     * @param number the value for workers_salary.number
     *
     * @mbggenerated
     */
    public void setNumber(String number) {
        this.number = number;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column workers_salary.month
     *
     * @return the value of workers_salary.month
     *
     * @mbggenerated
     */
    public Integer getMonth() {
        return month;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column workers_salary.month
     *
     * @param month the value for workers_salary.month
     *
     * @mbggenerated
     */
    public void setMonth(Integer month) {
        this.month = month;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column workers_salary.name
     *
     * @return the value of workers_salary.name
     *
     * @mbggenerated
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column workers_salary.name
     *
     * @param name the value for workers_salary.name
     *
     * @mbggenerated
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column workers_salary.post_salary
     *
     * @return the value of workers_salary.post_salary
     *
     * @mbggenerated
     */
    public Double getPostSalary() {
        return postSalary;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column workers_salary.post_salary
     *
     * @param postSalary the value for workers_salary.post_salary
     *
     * @mbggenerated
     */
    public void setPostSalary(Double postSalary) {
        this.postSalary = postSalary;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column workers_salary.salary_salary
     *
     * @return the value of workers_salary.salary_salary
     *
     * @mbggenerated
     */
    public Double getSalarySalary() {
        return salarySalary;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column workers_salary.salary_salary
     *
     * @param salarySalary the value for workers_salary.salary_salary
     *
     * @mbggenerated
     */
    public void setSalarySalary(Double salarySalary) {
        this.salarySalary = salarySalary;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column workers_salary.job_allowance
     *
     * @return the value of workers_salary.job_allowance
     *
     * @mbggenerated
     */
    public Double getJobAllowance() {
        return jobAllowance;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column workers_salary.job_allowance
     *
     * @param jobAllowance the value for workers_salary.job_allowance
     *
     * @mbggenerated
     */
    public void setJobAllowance(Double jobAllowance) {
        this.jobAllowance = jobAllowance;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column workers_salary.merit_salary
     *
     * @return the value of workers_salary.merit_salary
     *
     * @mbggenerated
     */
    public Double getMeritSalary() {
        return meritSalary;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column workers_salary.merit_salary
     *
     * @param meritSalary the value for workers_salary.merit_salary
     *
     * @mbggenerated
     */
    public void setMeritSalary(Double meritSalary) {
        this.meritSalary = meritSalary;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column workers_salary.wages_payable
     *
     * @return the value of workers_salary.wages_payable
     *
     * @mbggenerated
     */
    public Double getWagesPayable() {
        wagesPayable = getPostSalary()+getSalarySalary()+ getJobAllowance()+getMeritSalary();
        return wagesPayable;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column workers_salary.wages_payable
     *
     * @param wagesPayable the value for workers_salary.wages_payable
     *
     * @mbggenerated
     */
    public void setWagesPayable(Double wagesPayable) {
        this.wagesPayable = wagesPayable;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column workers_salary.individual_tax
     *
     * @return the value of workers_salary.individual_tax
     *
     * @mbggenerated
     */
    public Double getIndividualTax() {
        double wages_payable = getWagesPayable();
        if(wages_payable<=500){
            individualTax = 0.05*wages_payable;
        }
        else if(wages_payable<=2000){
            individualTax = 0.05*500+(wages_payable-500)*0.1;
        }
        else if(wages_payable<=5000){
            individualTax = 0.05*500+1500*0.1+(wages_payable-2000)*0.15;
        }
        else if(wages_payable<=20000){
            individualTax = 0.05*500+1500*0.1+3000*0.15+(wages_payable-5000)*0.2;
        }
        else if(wages_payable<=40000){
            individualTax = 0.05*500+1500*0.1+3000*0.15+15000*0.2+(wages_payable-20000)*0.25;
        }
        else if(wages_payable<=60000){
            individualTax = 0.05*500+1500*0.1+3000*0.15+15000*0.2+20000*0.25+(wages_payable-40000)*0.3;
        }
        else if(wages_payable<=80000){
            individualTax = 0.05*500+1500*0.1+3000*0.15+15000*0.2+20000*0.25+20000*0.3+(wages_payable-60000)*0.35;
        }
        else if(wages_payable<=100000){
            individualTax = 0.05*500+1500*0.1+3000*0.15+15000*0.2+20000*0.25+20000*0.3+20000*0.35+(wages_payable-80000)*0.4;
        }
        else if(wages_payable>100000){
            individualTax = 0.05*500+1500*0.1+3000*0.15+15000*0.2+20000*0.25+20000*0.3+20000*0.35+20000*0.4+(wages_payable-100000)*0.45;
        }
        return individualTax;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column workers_salary.individual_tax
     *
     * @param individualTax the value for workers_salary.individual_tax
     *
     * @mbggenerated
     */
    public void setIndividualTax(Double individualTax) {
        this.individualTax = individualTax;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column workers_salary.net_salary
     *
     * @return the value of workers_salary.net_salary
     *
     * @mbggenerated
     */
    public Double getNetSalary() {
        netSalary = getWagesPayable()-getIndividualTax();
        return netSalary;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column workers_salary.net_salary
     *
     * @param netSalary the value for workers_salary.net_salary
     *
     * @mbggenerated
     */
    public void setNetSalary(Double netSalary) {
        this.netSalary = netSalary;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column workers_salary.password
     *
     * @return the value of workers_salary.password
     *
     * @mbggenerated
     */
    public String getPassword() {
        password = "123";
        return password;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column workers_salary.password
     *
     * @param password the value for workers_salary.password
     *
     * @mbggenerated
     */
    public void setPassword(String password) {
        this.password = password;
    }
}