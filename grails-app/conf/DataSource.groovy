//dataSource {
//    pooled = true
//    jmxExport = true
//    driverClassName = "org.h2.Driver"
//    username = "sa"
//    password = ""
//}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
//    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
    flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
        }
    }
    production {
		dataSource {
			pooled = true
		dbCreate = "update"
		driverClassName = "com.mysql.jdbc.Driver"
		username = "sumrage"
		password = "12345678"
		url = "jdbc:mysql://ab2pqrs13o0vaj8.cbei2knihvtv.us-east-1.rds.amazonaws.com:3306/ebdb"
		dialect = org.hibernate.dialect.MySQL5InnoDBDialect
		properties {
			validationQuery = "SELECT 1"
			testOnBorrow = true
			testOnReturn = true
			testWhileIdle = true
			timeBetweenEvictionRunsMillis = 1000 * 60 * 30
			numTestsPerEvictionRun = 3
			minEvictableIdleTimeMillis = 1000 * 60 * 30
		}
		}
    }
}
