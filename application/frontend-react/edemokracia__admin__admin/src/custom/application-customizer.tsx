import type { BundleContext } from '@pandino/pandino-api';
import { ApplicationCustomizer } from './interfaces';

export class DefaultApplicationCustomizer implements ApplicationCustomizer {
  async customize(context: BundleContext): Promise<void> {
    // register your implementations here
  }
}
