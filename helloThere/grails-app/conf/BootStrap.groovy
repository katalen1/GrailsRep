import grails.util.GrailsUtil
import helloworld.entity.Text

class BootStrap {

    def init = { servletContext ->
        switch (GrailsUtil.environment){
            case "development":
                for(i in 0..15){
                    new Text(title: "Hello World attempt: " +i).save(failOnError: true)
                }
        }
    }
    def destroy = {
    }
}
