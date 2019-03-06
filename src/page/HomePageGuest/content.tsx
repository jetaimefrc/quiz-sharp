import React, { Component } from 'react'
import styled from 'styled-components'
import bookmark from '../../images/bookmark.png'
import date from '../../images/clock.png'

const WrapContent = styled.div`
  .wrap-all {
    margin-top: 3rem;
    height: 100vh;
    .content-right {
      background-color: #FFFFFF;
      margin-bottom: 3rem;
      box-shadow: 0 2px 15px grey;
      border-radius: 5px;
      .my-card {
        padding-left: 3rem;
        padding-right: 10rem;
        display: flex;
        flex-direction: column;
        .title-card {
          padding-top: 1rem;
          padding-bottom: 2rem;
          font-weight: bold;
          font-size: 1.5rem;
          color: #4C4C4C;
        }
        .info-card {
          display: flex;
          flex-direction: row;
          padding-bottom: 1rem;
          .wrap-avatar {
            .img-avatar {
              height: 50px;
              width: 50px;
              border-radius: 50%;
            }
            .username {
              color: #F100A8;
              font-size: 20px;
              font-weight: bold;
              padding-left: 10px;
            }
          }
          .wrap-terms {
            padding-top: 10px;
            position: absolute;
            left: 30%;
            .img-bookmark {
              padding-bottom: 5px;
            }
            .text-count {
              font-weight: bold;
              padding-left: 5px;
              color: #4C4C4C;
              font-size: 18px;
            }
          }
          .wrap-date {
            position: absolute;
            right: 10%;
            bottom: 18%;
            .img-date {
              padding-bottom: 5px;
            }
            span.text-date {
              padding-left: 5px;
              font-size: 18px;
              color: #9A9A9A;
              padding-top: 5px;
            }
          }
        }
      }
    }
  }
`

const cards = [
  {id: 1, title: 'Computer and the internet', img: 'flame.jpg', username: 'Flame', bookmark: '50', date: '20/02/2019'},
  {id: 2, title: 'Computer ', img: 'flame.jpg', username: 'Bacodekiller', bookmark: '30', date: '20/02/2018'},
  {id: 3, title: 'PRN292', img: 'flame.jpg', username: 'Bacode', bookmark: '40', date: '21/02/2019'},
  {id: 4, title: 'Computer and the internet', img: 'flame.jpg', username: 'Flame', bookmark: '30', date: '22/02/2019'},
]

function ContentQuizPage() {
  return (
    <WrapContent>
      <div className="wrap-all">
        <div className="container-fluid">
          <div className="row">
            {cards.map((card) => 
              <div className="col-12 content-right">
                <div className="my-card">
                  <div className="title-card">
                    <h4>{card.title}</h4>
                  </div>
                  <div className="info-card">
                    <div className="wrap-avatar">
                      <img src={require(`../../images/${card.img}`)} alt="" className="img-avatar"/>
                      <span className="username">{card.username}</span>
                    </div>
                    <div className="wrap-terms">
                      <img src={bookmark} alt="" className="img-bookmark"/>
                      <span className="text-count">{card.bookmark}</span>
                    </div>
                    <div className="wrap-date">
                      <img src={date} alt="" className="img-date"/>
                      <span className="text-date">{card.date}</span>
                    </div>
                  </div>
                </div>
              </div>
            )}
          </div>
        </div>
      </div>
    </WrapContent> 
  )
}

export default ContentQuizPage
