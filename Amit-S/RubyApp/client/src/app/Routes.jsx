import React from 'react';
import {Switch} from 'react-router-dom';
import MainLayout from '../layouts/MainLayout';
import Home from '../home/Home';
import NotFound from '../app/NotFound';
import Hello from '../hello/Hello';
import Profile from '../profile/Profile';
import {authRoutes, PrivateRoute} from 'react-devise';
import WithMainLayout from './WithMainLayout';

const AuthNotFound = () => <MainLayout><NotFound/></MainLayout>;

const Routes = () => {
  return (
    <Switch>
      {authRoutes({wrapper: WithMainLayout, notFoundComponent: AuthNotFound})}
      <PrivateRoute exact path="/hello" layout={MainLayout} component={Hello} />
      <PrivateRoute exact path="/profile" layout={MainLayout} component={Profile} />
      <WithMainLayout exact path="/" component={Home} />
      <WithMainLayout component={NotFound} />
    </Switch>
  );
};

export default Routes;
