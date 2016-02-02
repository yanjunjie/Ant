# Ant

编译EJB项目build_EJB.xml


wlcompile标签，根据ejb的bean的annotation自动生成ejb-jar.xml和weblogic-ejb-jar.xml自动放在META-INF目录里面。另外，wlcompile也会根据你的@JndiName的Local和Remote接口生成weblogic-ejb-jar.xml的对应的JNDI名。


wlpackage 和 wlcompile都是ant任务。Ant的执行程序在weblogic.jar 中。同WebLogic platform打包在一起的ant 有一个属性文件，这个文件包含了所以事先定义好的BEA taskdefs。
如果你使用的是不同版本的ant，你需要手工来使用这些taskdefs。以下是一些在BEA ant 属性文件中定义的任务名称和类名:

ddinit=weblogic.ant.taskdefs.ejb.DDInit

wldeploy=weblogic.ant.taskdefs.management.WLDeploy
wlserver=weblogic.ant.taskdefs.management.WLServer
wlconfig=weblogic.ant.taskdefs.management.WLConfig
wlcompile=weblogic.ant.taskdefs.build.WLCompileTask
wlpackage=weblogic.ant.taskdefs.build.WLPackageTask
wlappc=weblogic.ant.taskdefs.j2ee.Appc
