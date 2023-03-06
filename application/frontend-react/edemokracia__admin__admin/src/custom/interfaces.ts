import type { BundleContext } from '@pandino/pandino-api';

export interface ApplicationCustomizer {
  customize(context: BundleContext): Promise<void>;
}
