import React from "react"
import PropTypes from "prop-types"
import Tree from 'react-d3-tree'; //https://www.npmjs.com/package/react-d3-tree#installation

// This is a simplified example of an org chart with a depth of 2.
// Note how deeper levels are defined recursively via the `children` property.
const orgChart = {
  name: 'Group1',
  children: [
    {
      name: 'Mentor1',
      attributes: {
        group: 'Group1',
      },
      children: [
        {
          name: 'Mentee1',
          attributes: {
            group: 'Group1',
          },
        },
        {
          name: 'Mentee2',
          attributes: {
            group: 'Group2',
          },
        },
      ],
    },
    {
      name: 'Mentor2',
      attributes: {
        group: 'Group2',
      },
      children: [
        {
          name: 'Mentee3',
          atrributes: {
            group: 'Group3',
          },
        },
        {
          name: 'Mentee4',
          attributes: {
            group: 'Group4',
          },
        },
      ]
    }
  ],
};

class TreeComponent extends React.Component {
  //center tree https://github.com/bkrem/react-d3-tree/issues/49
  /*componentDidMount() {
    //hide first i nodes https://stackoverflow.com/questions/63749469/react-component-render-after-event-listener
    //document.getElementById('treeWrapper').firstChild.lastChild.firstChild.childNodes[0].style.opacity = 0;
    //document.getElementsByClassName('treeWrapper')[0].style.opacity = 0;
    let childNodes = 1;
    let i = 0;
    for (i = 0; i < childNodes; i++) {
    // hides first i links
      document.getElementsByClassName('linkBase')[i].style.opacity = 0  
    }
  }*/

  render () {
    return (
      <div id="treeWrapper" style={{height: '40em'}}>
        <Tree 
          data={orgChart}
          orientation={'vertical'}
          pathFunc={'elbow'}
        />
      </div>
    );
  }
}

export default TreeComponent
