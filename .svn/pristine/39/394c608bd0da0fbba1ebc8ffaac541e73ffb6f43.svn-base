package com.system.justfeedback.daos;

import java.lang.reflect.ParameterizedType;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.Transformers;
import org.hibernate.type.StringType;
import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

/*
 * @author Keval.soni
 */
public abstract class JustFeedbackAbstractClass<EntityType> extends HibernateDaoSupport implements GenericDao<EntityType> {

    private Class<EntityType> persistentClass;
    public Class<EntityType> getPersistentClass() {
        return persistentClass;
    }
    public void setPersistentClass(Class<EntityType> persistentClass) {
        this.persistentClass = persistentClass;
    }

    public JustFeedbackAbstractClass() {
        super();
        this.persistentClass = (Class<EntityType>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    }
    
    @Override
    public EntityType getByKey(Long key) {
		return (EntityType) getHibernateTemplate().get(persistentClass, key);
	}
    @Override
    public void addEntity(EntityType entity) {
        getHibernateTemplate().save(entity);
    }

    @Override
    public void deleteEntity(EntityType entity) {
        getHibernateTemplate().delete(entity);
    }

    @Override
    public void deleteAll(Collection entity) {
        getHibernateTemplate().deleteAll(entity);
    }

    @Override
    public void updateEntity(EntityType entity) {
        getHibernateTemplate().update(entity);
    }
    
    @Override
    public void updateEntityBySession(EntityType entity) {
    	getHibernateTemplate().update(entity);
    }

    @Override
    public void saveOrUpdateEntity(EntityType entity) {
        getHibernateTemplate().saveOrUpdate(entity);
    }

    @Override
    public void updateAll(Collection<EntityType> collection) {
        for (EntityType entity : collection) {
        	getHibernateTemplate().saveOrUpdate(entity);
        }
    }
    @Override
    public void persist(EntityType entity){
    	getHibernateTemplate().persist(entity);
    }
    @Override
    public List<EntityType> getAllEntity() {

        List<EntityType> lst = null;
        lst = getHibernateTemplate().loadAll(getPersistentClass());
        return lst;
    }
    @Override
    public List<EntityType> getAllEntityWithOrder(String orderByColumns) {

        List<EntityType> lst = null;
        lst = (List<EntityType>) getHibernateTemplate().find("from "+persistentClass.toString().replaceFirst("class ", "")+" order by "+orderByColumns);
        return lst;
    }
    /*
     * Below is to create Projection Ex. count, rowcount, max, min etc See
     * Projection.Ctrl+Space
     */
    @Override
    public long getEntityCount() {
        long count = 0;
        Criteria c = currentSession().createCriteria(persistentClass)
                .setProjection(Projections.rowCount());
        count = (Long) c.list().get(0);
        return count;
    }

//	@Override
//	public List<Object[]> createQuery(String query) {
//		Query q = null;
//		q = getSession().createQuery(query);
//		return q == null ? null : q.list();
//	}
    @Override
    public List<Object[]> createQuery(String query, Map<String, Object> var) {
        Query q = null;
        q = getHibernateTemplate().getSessionFactory().openSession().createQuery(query);
        setQueryMap(q, var);
        return q == null ? null : q.list();
    }

    @Override
    public List<Object[]> createSQLQuery(String query, Map<String, Object> var) {
        Query q = null;
        q = getHibernateTemplate().getSessionFactory().openSession().createSQLQuery(query);        
        setQueryMap(q, var);
        return q == null ? null : q.list();
    }
    
    @Override
    public List<Object[]> createSQLQuery(String query, Map<String, Object> var,int[] ncharsIndex,int colcount) {
        SQLQuery q = null;
        q = getHibernateTemplate().getSessionFactory().openSession().createSQLQuery(query);
        for (int i=0;i<colcount;i++){
            boolean isNchar = false;
            for (int j : ncharsIndex) {
                if(i==j){
                    isNchar = true;
                    break;
                }
            }
            if(isNchar){
                q.addScalar("c"+i,StringType.INSTANCE);
            }else{
                q.addScalar("c"+i);
            }
        }        
        setQueryMap(q, var);
        return q == null ? null : q.list();
    } 

    @Override
    public List<Object[]> createByCountQuery(String query, Map<String, Object> var, int firstResult,
            int maxResult) {
        Query q = null;
        q = getHibernateTemplate().getSessionFactory().openSession().createQuery(query);
        setQueryMap(q, var);    
        q.setFirstResult(firstResult);
        q.setMaxResults(maxResult);
        return q == null ? null : q.list();
    }

    @Override
    public long countForQuery(String from, String countOn, String where, Map<String, Object> var) {
        Query q = null;
        StringBuilder query = new StringBuilder();
        query.append("select count(").append(countOn).append(") as count from ").append(from).append(" where ").append(where);
        q = getHibernateTemplate().getSessionFactory().openSession().createQuery(query.toString());
        setQueryMap(q, var);
        return q == null ? 0 : (Long) q.list().get(0);
    }

    @Override
    public List<Object> singleColQuery(String query, Map<String, Object> var) {
        Query q = null;
        q = getHibernateTemplate().getSessionFactory().openSession().createQuery(query);
        setQueryMap(q, var);
        return q == null ? null : q.list();
    }

    @Override
    public int updateDeleteQuery(String query, Map<String, Object> var) {
        Query q = null;
        q = getHibernateTemplate().getSessionFactory().openSession().createQuery(query);
        setQueryMap(q, var);
        return q == null ? 0 : q.executeUpdate();
    }

    @Override
    public int updateDeleteSQLQuery(String query, Map<String, Object> var) {
        Query q = null;
        q = getHibernateTemplate().getSessionFactory().openSession().createSQLQuery(query);
        setQueryMap(q, var);
        return q == null ? 0 : q.executeUpdate();
    }

    @Override
    public List nativeQueryToBean(String query, Class classAlias, Map<String, Object> var) throws DataAccessResourceFailureException, HibernateException, IllegalStateException, ClassNotFoundException {
        Query q = null;
        q = getHibernateTemplate().getSessionFactory().openSession().createSQLQuery(query).setResultTransformer(Transformers.aliasToBean(classAlias));
        setQueryMap(q, var);
        return q.list();
    }
    
    private void setQueryMap(Query q,Map<String, Object> var){
        if(var!=null){
            Set<String> varnames = var.keySet();
            for (String key : varnames) {
                Object val = var.get(key);
                if (val instanceof String) {
                    q.setString(key, val.toString());
                } else if (val instanceof Integer) {
                    q.setInteger(key, (Integer) val);
                } else if (val instanceof Date) {
                    q.setDate(key, (Date) val);
                }else if (val instanceof Long) {
                    q.setLong(key, (Long) val);
                }else if (val instanceof Object[]) {
                    q.setParameterList(key,(Object[]) val);
                }else if (val instanceof Collection) {
                    q.setParameterList(key,(Collection) val);
                }else if (val instanceof Double) {
                    q.setDouble(key, (Double) val);
                }else if (val instanceof BigDecimal) {
                    q.setBigDecimal(key, (BigDecimal) val);
                }
            }
        }
    }
    @Override
    public List<EntityType> findEntity(Object... values) throws Exception {

        HibernateTemplate hibernateTemplate = getHibernateTemplate();
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(persistentClass);
        List<EntityType> lst = new ArrayList<EntityType>();

        int len = values.length % 3;
        //boolean ordered = false;

        if (len != 0) {
            throw new Exception(
                    "Arguments Must be triplet of [field, expression(e.g. eq,lt,gt...), value]");
        }

        len = values.length / 3;

        for (int i = 0, j = 0; i < len; i++, j += 3) {

            Operation_enum operation = (Operation_enum) values[j + 1];

            switch (operation) {
                case EQ:
                    detachedCriteria.add(Restrictions.eq(values[j].toString(),
                            values[j + 2]));
                     System.out.println("restrictions==="+values[j].toString()+"---"+
                     values[j + 2]);
                    break;
                case GE:
                    detachedCriteria.add(Restrictions.ge(values[j].toString(),
                            values[j + 2]));
                    break;
                case GT:
                    detachedCriteria.add(Restrictions.gt(values[j].toString(),
                            values[j + 2]));
                    break;
                case LE:
                    detachedCriteria.add(Restrictions.le(values[j].toString(),
                            values[j + 2]));
                    break;
                case LT:
                    detachedCriteria.add(Restrictions.lt(values[j].toString(),
                            values[j + 2]));
                    break;
                case NE:
                    detachedCriteria.add(Restrictions.ne(values[j].toString(),
                            values[j + 2]));
                    break;
                case LIKE:
                    detachedCriteria.add(Restrictions.ilike(values[j].toString(),
                            values[j + 2]));
                    break;
                case OR:
                    detachedCriteria
                            .add(Restrictions.or(Restrictions.ilike(
                            values[j].toString(), values[j + 2]),
                            Restrictions.ilike(values[j + 3].toString(),
                            values[j + 5])));
                    j = j + 3;
                    i++;
                    break;
                case IN:
                    detachedCriteria.add(Restrictions.in(values[j].toString(),
                            (Object[]) values[j + 2]));
                    break;
                case ORDERBY:
                    //ordered = true;
                    Operation_enum order = (Operation_enum) values[j + 2];
                    if (order == Operation_enum.ASC) {
                        detachedCriteria.addOrder(Order.asc(values[j].toString()));
                    } else if (order == Operation_enum.DESC) {
                        detachedCriteria.addOrder(Order.desc(values[j].toString()));
                    } else {
                        throw new Exception(
                                "Order by can be ASC or DESC only. use Enum for to specify this.");
                    }
                    break;
                default:

            }
        }
        lst = (List<EntityType>) hibernateTemplate.findByCriteria(detachedCriteria);
        return lst;
    }
}
