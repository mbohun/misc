grails.project.dependency.distribution = {
  remoteRepository(id:"nectar-nexus-repo-snapshot",
		   url:"http://130.56.249.242/nexus/content/repositories/snapshots")

  remoteRepository(id:"nectar-nexus-repo-release",
		   url:"http://130.56.249.242/nexus/content/repositories/releases")
}

//grails.project.repos.'nectar-nexus-repo-snapshot'.url = "http://130.56.249.242/nexus/content/repositories/snapshots/"
grails.project.repos.'nectar-nexus-repo-snapshot'.username = System.getenv("TRAVIS_DEPLOY_USERNAME")
grails.project.repos.'nectar-nexus-repo-snapshot'.password = System.getenv("TRAVIS_DEPLOY_PASSWORD")

//grails.project.repos.'nectar-nexus-repo-release'.url = "http://130.56.249.242/nexus/content/repositories/releases/"
grails.project.repos.'nectar-nexus-repo-release'.username = System.getenv("TRAVIS_DEPLOY_USERNAME")
grails.project.repos.'nectar-nexus-repo-release'.password = System.getenv("TRAVIS_DEPLOY_PASSWORD")
