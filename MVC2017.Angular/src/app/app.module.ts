﻿import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';

import { AppComponent } from './app.component';
import { ServerComponent } from './server/server.component';
import { ServersComponent } from './servers/servers.component';
import { HeaderComponent} from './header/header.component';
import { RecipesComponent } from './recipes/recipes.component';
import { RecipeListComponent } from './recipes/recipe-list/recipe-list.component';
import { RecipeItemComponent } from './recipes/recipe-list/recipe-item/recipe-item.component';
import { ShopingListComponent } from './shoping-list/shoping-list.component';
import { ShopingEditComponent } from './shoping-list/shoping-edit/shoping-edit.component';
import { RecipeDetailComponent } from './recipes/recipe-detail/recipe-detail.component';
import { GlobalModelComponent } from './shared/global-model/global-model.component';
import { CourseComponent } from './courses/course/course.component';
import { CourseListComponent } from './courses/course-list/course-list.component';
import { AppRoutingModule } from './app-routing.module';
import { CourseService } from './courses/course.service';
import {StoreModule } from '@ngrx/store';
import { courseReducer } from './store/reducer';
import { StoreDevtoolsModule } from '@ngrx/store-devtools';

@NgModule({
  declarations: [
      AppComponent,
      ServerComponent,
      ServersComponent,
      HeaderComponent,
      RecipesComponent,
      RecipeListComponent,
      RecipeItemComponent,
      ShopingListComponent,
      ShopingEditComponent,
      RecipeDetailComponent,
      GlobalModelComponent,
      CourseComponent,
      CourseListComponent
  ],
  imports: [
      BrowserModule,
      FormsModule,
      AppRoutingModule,
      StoreModule.forRoot({
         courseState:courseReducer
      }),
      StoreDevtoolsModule.instrument({
          maxAge:10
      })
  ],
  providers: [CourseService],
  bootstrap: [AppComponent],
  
})

export class AppModule { }
