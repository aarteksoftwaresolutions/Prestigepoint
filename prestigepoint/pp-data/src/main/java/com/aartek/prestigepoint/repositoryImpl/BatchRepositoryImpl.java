package com.aartek.prestigepoint.repositoryImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aartek.prestigepoint.model.Batch;
import com.aartek.prestigepoint.repository.BatchRepository;
import com.aartek.prestigepoint.util.IConstant;

@SuppressWarnings("unchecked")
@Repository
public class BatchRepositoryImpl implements BatchRepository {
    @Autowired
    private HibernateTemplate hibernateTemplate;

    /**
     * Get all batch name from data base.
     */
    public List<Batch> getAllBatchName() {
        List<Batch> batchList = hibernateTemplate.find("from Batch where IS_DELETED=" + IConstant.IS_DELETED);
        return batchList;
    }

    /**
     * Get batch information for edit batch details.
     */
    public List<Object> editBatch(Integer batchId) {
        List<Object> list = hibernateTemplate.find("from Batch b where b.batchId=" + batchId);
        return list;
    }

    /**
     * Method use for save batch details into database.
     */
    public boolean addBatch(Batch batch) {
        if (batch != null) {
            hibernateTemplate.saveOrUpdate(batch);
            return true;
        } else {
            return false;
        }
    }

    /**
     * Method for delete batch information.
     */
    public void deleteBatch(Integer batchId) {
        Batch batch = (Batch) hibernateTemplate.get(Batch.class, batchId);
        batch.setIsDeleted(IConstant.IS_DELETED_DEACTIVE);
        if (null != batch) {
            hibernateTemplate.update(batch);
        }
    }

}
