import React, { Component } from 'react';
import {withRouter} from 'react-router-dom';
import _ from 'lodash';
import logo from './logo.svg';
import './App.css';

import Header from './Components/Shared/Header/index';

import SearchBar from './Components/search_bar';
import VideoList from './Components/video_list';
import VideoDetail from './Components/video_detail';
import YTSearch from 'youtube-api-search';

import BookList from './Containers/book-list';
import BookDetail from './Containers/book-detail';

import Routes from './routes';
//youtube API key
const API_KEY = "AIzaSyDlw_E_mwaDv27xK9zVMMxo-5JjbwQbPcI";


class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      videos: [],
      selectedVideo: null
    };

    // this.onSearchVideo("surfboards");
  }
  render() {
    let searchVideo = _.debounce((term) => { this.onSearchVideo(term); }, 300);
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">Welcome to React</h1>
        </header>
        <p className="App-intro">
          To get started, edit <code>src/App.js</code> and save to reload.
        </p>
        <h1>Mahmoud Ahmed try touch with React ;)</h1>
        <Header></Header>
        <hr />
        <Routes></Routes>



        {/* <SearchBar onSearchTermChange={searchVideo} />
        <VideoDetail video={this.state.selectedVideo} />
        <VideoList videos={this.state.videos} onVideoSelect={(selectedVideo) => this.setState({ selectedVideo })} />
        <hr />

        <BookList/>
        <BookDetail/> 
        <hr/>
        */}
      </div>

    );
  }

  onSearchVideo(term) {
    YTSearch({ key: API_KEY, term: term }, (videos) => {
      this.setState({
        videos: videos,
        selectedVideo: videos[0]
      });
    });
  }
}

export default App;
