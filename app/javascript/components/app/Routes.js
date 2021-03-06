import React from 'react';
import {Route} from 'react-router-dom';
import Tasks from "./task/Tasks";

/**
 * Encapsulates all the possible routes in the application page (for React-Router's use).
 */
const Routes = () => {
    return (
        <Route path={["/app/tasks/tags/:tagId", "/app/tasks"]} component={Tasks}/>
    )
};

export default Routes;