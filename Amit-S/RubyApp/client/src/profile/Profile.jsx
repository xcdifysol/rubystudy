import React from 'react';
import { ViewHeading } from '../shared';
import { graphql } from 'react-apollo';
import gql from 'graphql-tag';
import muiThemeable from 'material-ui/styles/muiThemeable';

const profileQuery = gql`{profile}`;

const Profile = ({ data: { loading, profile } }) => {
  return (
    <div>
      <div>
        <ViewHeading>Profile</ViewHeading>
        <p>{profile} : {this}</p>
      </div>
    </div>
  );
};

export default graphql(profileQuery)(muiThemeable()(Profile));

