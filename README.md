# Ant

编译EJB项目build_EJB.xml


wlcompile标签，根据ejb的bean的annotation自动生成ejb-jar.xml和weblogic-ejb-jar.xml自动放在META-INF目录里面。另外，wlcompile也会根据你的@JndiName的Local和Remote接口生成weblogic-ejb-jar.xml的对应的JNDI名。
