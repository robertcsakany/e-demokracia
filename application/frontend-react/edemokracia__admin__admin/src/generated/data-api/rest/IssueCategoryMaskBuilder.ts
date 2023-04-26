import { MaskBuilder, RelationMaskBuilder } from './MaskBuilder';
import { IssueCategoryAttributes, UserAttributes } from '../model';

export class IssueCategorySubcategoriesMaskBuilder extends RelationMaskBuilder {
  constructor(protected props: Array<IssueCategoryAttributes | IssueCategorySubcategoriesMaskBuilder>) {
    super('subcategories', props);
  }
}

export class IssueCategoryMaskBuilder extends MaskBuilder {
  constructor(protected props: Array<IssueCategoryAttributes | IssueCategorySubcategoriesMaskBuilder>) {
    super(props);
  }
}
