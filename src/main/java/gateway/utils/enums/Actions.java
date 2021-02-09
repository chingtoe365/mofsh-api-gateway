package gateway.utils.enums;

/**
 * The list of actions of the service
 * @author jintaolong@brookes.ac.uk
 * @created 2021-02-04
 * @updated 2021-02-04
 */
public enum Actions {
    // Token
    GET_TOKEN,
    RESET_TOKEN,

    // Users
    GET_USER,
    NEW_USER,
    UPDATE_USER,
    ADD_USER_CREDS,
    LOGIN,
    RESET_PASSWORD,

    // Data Cubes
    ALL_AVAIL_RESOURCES,
    RESOURCE,

}
