///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: 'src/components-api/components/TrinaryLogic.ts'
// Template name: actor/src/components-api/components/TrinaryLogic.ts.hbs

export const TRINARY_LOGIC = new Map<boolean | null, string>([
  [null, 'Unknown'],
  [true, 'Yes'],
  [false, 'No'],
]);

export interface TrinaryLogicProps {
  readOnly?: boolean;
  value?: boolean | null;
  id?: string;
  label: string;
  name?: string;
  error?: boolean | undefined;
  helperText?: string | undefined;
  onChange?: (value: boolean | null) => void;
}
