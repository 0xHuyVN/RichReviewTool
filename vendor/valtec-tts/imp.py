"""Small Python 3.12 compatibility shim for dependencies still importing imp."""

import importlib.util
from pathlib import Path


def find_module(name, path=None):
    spec = importlib.util.find_spec(name)
    if spec is None:
        raise ImportError(f"No module named {name!r}")

    origin = spec.origin
    search_locations = list(spec.submodule_search_locations or [])
    module_path = search_locations[0] if search_locations else str(Path(origin).parent)
    return origin, module_path, None
