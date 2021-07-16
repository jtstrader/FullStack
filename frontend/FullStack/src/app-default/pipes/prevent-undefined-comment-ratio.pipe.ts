import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'preventUndefinedCommentRatio'
})
export class PreventUndefinedCommentRatioPipe implements PipeTransform {

  transform(num: number): number {
    return num == undefined ? 0 : num;
  }

}
