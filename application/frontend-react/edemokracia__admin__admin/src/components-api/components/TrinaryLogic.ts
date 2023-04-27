//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components-api/components/TrinaryLogic.ts'
// Template name: actor/src/components-api/components/TrinaryLogic.ts
// Template file: actor/src/components-api/components/TrinaryLogic.ts.hbs

export const TRINARY_LOGIC = new Map<boolean | null, string>([
  [null, 'Unknown'],
  [true, 'Yes'],
  [false, 'No'],
]);

export interface TrinaryLogicProps {
  autoFocus?: boolean;
  readOnly?: boolean;
  disabled?: boolean;
  editMode?: boolean;
  value?: boolean | null;
  id?: string;
  label: string;
  name?: string;
  error?: boolean | undefined;
  helperText?: string | undefined;
  onChange?: (value: boolean | null) => void;
}
