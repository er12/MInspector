package facebook

import com.restfb.DefaultFacebookClient
import com.restfb.FacebookClient
import com.restfb.Parameter
import com.restfb.Version
import com.restfb.json.JsonObject
import com.restfb.types.Page
import com.restfb.types.User
import grails.transaction.Transactional
import grails.plugins.rest.client.RestBuilder
import org.grails.web.json.JSONObject

@Transactional
class FacebookService {

    def databaseService

    def serviceMethod()
    {

        RestBuilder rest = new RestBuilder()
        def access_token = databaseService.getToken("facebook") ;
        def resp = rest.get("https://graph.facebook.com/v2.8/me?&access_token=" + access_token )
        resp.json
    }

    def getReactions()
    {
        def resp = new ArrayList<>()

        FacebookClient facebookClient = new DefaultFacebookClient(databaseService.getToken("facebook"), Version.VERSION_1_0);

        JsonObject fetchObjectsResults = facebookClient.fetchObject( "10155484089047995",
                JsonObject.class, Parameter.with("fields","name,id,likes,books"));

        //id =
        //String query = "me/posts?fields=message,reactions,link"
        //Eduardo 10155484089047995
        //Lefties 876781059068624
        //Page page = facebookClient.fetchObject("me", Page.class);

        //def resp = rest.get("https://graph.facebook.com/v2.8/" + query + "&access_token=" + access_token )

        println fetchObjectsResults

        fetchObjectsResults



    }

    def getUser(String id)
    {
        //10152927394557995/likes
        RestBuilder rest = new RestBuilder()
        def access_token = databaseService.getToken("facebook")

        //id = 876781059068624
        return "yes"

        //def resp = rest.get("https://graph.facebook.com/v2.8/" + query + "&access_token=" + access_token )

        //user_birthday, user_religion_politics, user_location, user_about_me, user_status, manage_pages, pages_show_list, pages_manage_instant_articles, pages_messaging, pages_messaging_subscriptions, user_actions.books, user_actions.fitness, public_profile


    }

}
