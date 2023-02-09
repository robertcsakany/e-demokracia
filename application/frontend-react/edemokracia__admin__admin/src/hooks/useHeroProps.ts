import type { HeroProps } from '../components-api';
import { getUser } from '../auth';

export function useHeroProps(): HeroProps {
  const { profile } = getUser();

  return {
    imgSrc: 'ninja.png',
    actorName: 'Admin',
    preferredUsername: profile?.preferred_username,
    email: profile?.email,
  };
}
