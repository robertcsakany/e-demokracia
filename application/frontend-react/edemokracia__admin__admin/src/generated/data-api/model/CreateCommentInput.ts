import { JudoStored } from '@judo/data-api-common';

export interface CreateCommentInput {
  comment: string;
}
export type CreateCommentInputAttributes = 'comment';

export interface CreateCommentInputStored extends JudoStored<CreateCommentInput>, CreateCommentInput {}
