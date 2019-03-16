import React from 'react'
import styled from 'styled-components'
import { Link } from 'react-router-dom'
import {
  IconProfile,
  IconGlobal,
  IconSetting,
  IconInformation,
  IconSettingGray,
  IconGlobalGray
} from '../images'

const WrapContent = styled.div`
  .content {
    margin-top: 3rem;
    .box {
      margin-bottom: 1.5rem;
      box-shadow: 0 2px 15px grey;
      border-radius: 5px;
      padding: 1rem;

      .box-content {
        border-radius: 5px;
        height: 37px;
        color: grey;
        text-align: center;
        margin-bottom: 3px;
        line-height: 37px;
        &:hover {
          box-shadow: 0 2px 15px grey;
          border-radius: 5px;
        }
      }
    }
  }
`

class SideBar extends React.Component<any, any> {

  constructor(props: any) {
    super(props)
    this.state = {
      username: 'thaycacac'
    }
  }

  render() {
    return (
      <WrapContent>
        { this.state.username !== null && 
          <div className="content">
            <div className="box">
              <Link to="/list-quiz">
                <div className="box-content">
                  <img src={IconProfile} />
                </div>
              </Link>
              <Link to="/home-page-user">
                <div className="box-content">
                  <img src={IconGlobal} />
                </div>
              </Link>
              <Link to="#">
                <div className="box-content">
                  <img src={IconSetting} />
                </div>
              </Link>
              <Link to="/home-page">
                <div className="box-content">
                  <img src={IconInformation} />
                </div>
              </Link>
            </div>
          </div>
        }
        { this.state.username === null && 
          <div className="content">
            <div className="box">
              <Link to="/home-page-guest">
                <div className="box-content">
                  <img src={IconGlobalGray} />
                </div>
              </Link>
              <Link to="#">
                <div className="box-content">
                  <img src={IconSettingGray} />
                </div>
              </Link>
            </div>
          </div>
        }
      </WrapContent>
    )
  }
}

export default SideBar
