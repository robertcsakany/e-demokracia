//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components/DropdownButton.tsx'
// Template name: actor/src/components/DropdownButton.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230419_114141_e53c8a6f_develop
// Template file: actor/src/components/DropdownButton.tsx.hbs

import { Button, ClickAwayListener, Grow, MenuItem, MenuList, Paper, Popper } from '@mui/material';
import { useState, useRef, useEffect } from 'react';
import type { ReactNode, KeyboardEvent, SyntheticEvent } from 'react';
import { MdiIcon } from './MdiIcon';

interface DropdownMenuItem {
  id: string;
  disabled?: boolean;
  visible?: boolean;
  label?: string;
  onClick: () => void;
  startIcon?: ReactNode;
  endIcon?: ReactNode;
}

interface DropdownButtonProps {
  children?: ReactNode;
  id: string;
  menuItems: DropdownMenuItem[];
  disabled?: boolean;
  showDropdownIcon?: boolean;
  fullWidth?: boolean;
  variant?: 'text' | 'outlined' | 'contained' | undefined;
}

export function DropdownButton({
  children,
  id,
  menuItems,
  disabled = false,
  showDropdownIcon = true,
  fullWidth = false,
  variant = 'contained',
}: DropdownButtonProps) {
  const [open, setOpen] = useState(false);
  const anchorRef = useRef<HTMLButtonElement>(null);

  const handleToggle = () => {
    setOpen((prevOpen) => !prevOpen);
  };

  const handleClose = (event: Event | SyntheticEvent) => {
    if (anchorRef.current && anchorRef.current.contains(event.target as HTMLElement)) {
      return;
    }

    setOpen(false);
  };

  function handleListKeyDown(event: KeyboardEvent) {
    if (event.key === 'Tab') {
      event.preventDefault();
      setOpen(false);
    } else if (event.key === 'Escape') {
      setOpen(false);
    }
  }

  // return focus to the button when we transitioned from !open -> open
  const prevOpen = useRef(open);
  useEffect(() => {
    if (prevOpen.current && !open) {
      anchorRef.current!.focus();
    }

    prevOpen.current = open;
  }, [open]);

  return (
    <>
      <Button
        ref={anchorRef}
        id={id}
        onClick={handleToggle}
        endIcon={showDropdownIcon && <MdiIcon path="chevron-down" />}
        disabled={disabled}
        fullWidth={fullWidth}
        variant={variant}
      >
        {children}
      </Button>
      <Popper
        open={open}
        anchorEl={anchorRef.current}
        placement="bottom"
        transition
        style={{ zIndex: 1400, minWidth: anchorRef.current?.scrollWidth }}
      >
        {({ TransitionProps, placement }) => (
          <Grow
            {...TransitionProps}
            style={{
              transformOrigin: placement === 'bottom-start' ? 'left top' : 'left bottom',
            }}
          >
            <Paper>
              <ClickAwayListener onClickAway={handleClose}>
                <MenuList autoFocusItem={open} onKeyDown={handleListKeyDown}>
                  {menuItems
                    .filter((menuItem) => menuItem.visible ?? true)
                    .map((menuItem, index) => {
                      return (
                        <MenuItem
                          key={menuItem.label ?? '' + index}
                          id={menuItem.id}
                          disabled={menuItem.disabled ?? false}
                          onClick={(event) => {
                            handleClose(event);
                            menuItem.onClick();
                          }}
                        >
                          {menuItem.startIcon}
                          {menuItem.label}
                          {menuItem.endIcon}
                        </MenuItem>
                      );
                    })}
                </MenuList>
              </ClickAwayListener>
            </Paper>
          </Grow>
        )}
      </Popper>
    </>
  );
}
