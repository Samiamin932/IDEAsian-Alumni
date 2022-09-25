import React from "react"
import PropTypes from "prop-types"
import Tree from 'react-d3-tree'; //https://www.npmjs.com/package/react-d3-tree#installation

// This is a simplified example of an org chart with a depth of 2.
// Note how deeper levels are defined recursively via the `children` property.
const orgChart = {
  name: 'Alumni',
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
  render () {
    return (
      <div id="treeWrapper" style={{ width: '100%', height: '40em' }}>
       <Tree data={orgChart} />
      </div>
    );
  }
}

export default TreeComponent
