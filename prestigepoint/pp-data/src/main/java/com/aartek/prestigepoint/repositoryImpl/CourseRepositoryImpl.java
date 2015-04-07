package com.aartek.prestigepoint.repositoryImpl;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aartek.prestigepoint.model.Course;
import com.aartek.prestigepoint.model.Enquiry;
import com.aartek.prestigepoint.model.CurrentStatus;
import com.aartek.prestigepoint.model.Year;
import com.aartek.prestigepoint.repository.CourseRepository;
import com.aartek.prestigepoint.util.IConstant;

@SuppressWarnings({ "unchecked", "rawtypes" })
@Repository
public class CourseRepositoryImpl implements CourseRepository {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	/**
	 * Save course details into data base.
	 */
	public boolean addCourse(Course course) {
		if (course != null) {
			hibernateTemplate.saveOrUpdate(course);
			return true;
		} else {
			return false;
		}
	}

	/**
	 * get all course name from data base.
	 */
	public List<Course> getAllCourseName() {
		List<Course> courseList = null;
		courseList = hibernateTemplate.find("from Course where IS_DELETED="
				+ IConstant.IS_DELETED);
		return courseList;
	}

	/**
	 * get course information for edit course details.
	 * 
	 * @param courseId
	 */
	public List<Object> editCourse(Integer courseId) {
		List<Object> list = null;
		list = hibernateTemplate.find("from Course c where c.courseId="
				+ courseId);
		return list;
	}

	/**
	 * Method use for delete course.
	 * 
	 * @param courseId
	 */
	public void deleteCourse(Integer courseId) {
		Course course = (Course) hibernateTemplate.get(Course.class, courseId);
		course.setIsDeleted(IConstant.IS_DELETED_DEACTIVE);
		if (null != course) {
			hibernateTemplate.update(course);
		}
	}

	/**
	 * Method use for get all enquiey details
	 */
	public List<Enquiry> getAllEnquiryDetails() {
		List<Enquiry> enquiries = null;
		enquiries = hibernateTemplate.find("from Enquiry where IS_DELETED="
				+ IConstant.IS_DELETED + "order by name desc");
		return enquiries;
	}

	/**
	 * Method for get all year name
	 */
	public List<Year> getAllYearName() {
		List<Year> years = null;
				years = hibernateTemplate.find("from Year where IS_DELETED="
					+ IConstant.IS_DELETED + " order by year asc");
					return years;
	}
	/**
	 * Method for get all current status
	 */
	public List<CurrentStatus> getAllCurrentStatus() {

		List<CurrentStatus> currentStatus = null;
		currentStatus = hibernateTemplate.find("from CurrentStatus where IS_DELETED="
				+ IConstant.IS_DELETED + " order by currentStatus asc");
		return currentStatus;
	}

	/**
	 * Method for get course fee corresponding for courseType.
	 * 
	 * @param courseIdId
	 */
	public Integer getFeeByCourseType(Integer courseIdId) {
		List<Object> list = null;
		list = hibernateTemplate.find("from Course c where c.isDeleted="
				+ IConstant.IS_DELETED + " and c.courseId=?", courseIdId);
		Iterator iterator = list.iterator();
		Integer amount = null;
		while (iterator.hasNext()) {
			Course type = (Course) iterator.next();
			amount = type.getCourseFee();
		}
		return amount;
	}

}
