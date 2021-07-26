import React from "react"
import PropTypes from "prop-types"
import Funcional from './Functional'
import Login from './Login'
class HelloWorld extends React.Component {
  render () {
    return (
      
      <React.Fragment>
        {Routes.students_path()}
        Greeting here: {this.props.greeting}
        <Login />
        <Funcional />
      </React.Fragment>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};
export default HelloWorld
