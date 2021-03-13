package gateway.builders.impl;

import gateway.builders.interfaces.URLBuilder;
import gateway.utils.constants.GSURLConstants;
import gateway.utils.enums.Actions;
import org.springframework.http.HttpMethod;

import java.util.List;


/**
 * This class implements the URL interface
 * @author jintaolong@brookes.ac.uk
 * @created 2021-02-04
 * @updated 2021-02-04
 */
public class URLBuilerImpl implements URLBuilder {

    /**
     * This method builds the URL
     * @param action
     * @param params
     * @return
     */
    @Override
    public String build(Actions action, List<Object> params) {
        String url = "";
        switch(action){
            case LOGIN:
                //http://localhost:9999/api/v1/users/{userID}/login
                url = GSURLConstants.USERS_URL + GSURLConstants.USERS + (String)params.get(0) + "/" + GSURLConstants.LOGIN;
                break;
            case RESOURCE:
                //http://localhost:9999/api/v1/resource/{resourceID}
                url = GSURLConstants.USERS_URL + GSURLConstants.RESOURCE + (String)params.get(0);
                break;
            default:
                url = "";
        }
        return url;
    }

    /**
     * This method returns the HTTPMethod type of an action
     * @param action, the action to check
     * @return HttpMethod, the HttpMethod
     */
    @Override
    public HttpMethod getMethod(Actions action) {

        switch(action){

            case UPDATE_USER:
                return HttpMethod.PUT;

            case RESOURCE:
                return HttpMethod.GET;

            default:
                return HttpMethod.POST;
        }
    }
}
